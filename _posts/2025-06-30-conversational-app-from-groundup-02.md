---
title: Conversational App from Ground Up - Part 2
excerpt: Add memory to the conversation flow 
tags:
    - LLM
    - AI
---


In the last post, read milestone, I had written about how I had set up a basic conversational web app using streamlit for front-end and langchain to connect with OpenAI for LLM behaviour.
Here is the link to the post, i.e. [Conversational App from Ground Up - Part 1](https://apesurd.com/conversational-app-from-groundup-02/){:target="_blank"}

## So what now? 

In the previous article, to keep things simple, I only sent the last user prompt to the LLM API. \
And as a result, it would appear to the app user as if the chatbot doesn't have any context of previous exchanges.

As you can see, the chatbot doesn't seen to know my name even though I had provided taht information to him just in the previous conversation. 
<img src="{{ site.url }}{{ site.baseurl }}/assets/images/posts/conversational-app-from-groundup/no-memory-setting-up.png" alt="Response showing lack of conversational memory in current implementation">

In this post, I will incorporate memory to the conversation flow.
If you prefer to explore the code yourself, refer to the branch correponding to this milestone <a href="https://github.com/apesurd/ConversationalStack/tree/milestone/02-add-memory" target="_blank">here</a> \

## Memory in LLMs

To keep things simple, I will not get lost into the details of LLM architecture, transformers, encoding, decoding etc. \

So LLMs at a very basic levels are AI models trained on a large corpus of text. \
At the risk of oversimplifying, they are sequence-to-sequence model that try to predict the next word in the sequence given the previous words. \
In other words, they take a sequence of words as input and predict the next word in the sequence. \

The model is trained on a large corpus of text, and then uses the model to generate text based on the input. \
This large corpus of data is called the vocabulary of the model. \
The model then uses the generated text to predict the next word in the sequence. \

To further customize the behaviour of the model, we have the following options: 
### 1. Fine tune the model with our own data. (analogy, compile time behaviour)
Real world applications like ChatGPT use fine-tuned models, fine-tuned on foundational model (e.g. GPT-3) to perform the desired task of having a conversation. \
But fine-tuning is a very expensive and time consuming process. \

### 2. Enrich the context with custom data. (analogy, run time behaviour)
For chatbot like applications, if the custom data is provided to the model as context, then the model can remember the context of the conversation. \
This is what I mean by memory here.

Long story short, to simulate the behaviour of ChatGPT, we need to provide the model with the context of the entire conversation, not just the last conversation. And that is what I would try to do.

## Enrich the context with chat-history 

Previous milestone, had ended with 2 core files handling the entire application logic. 1. `frontend/core/util.py` and 2. `frontend/app.py`. \
`get_response` function doesn't need to be changes, since it simply passes the input to model.invoke function, that supports both a single string as well as a list of prompts.

To add memory to the conversation flow, I need to do the following changes: 
1. Update the app.py to pass the conversation-history to the get_response function. 

### Changes to `frontend/app.py`

Add the following function to the `app.py` file:
```python
def get_chat_history():
    """
    Returns the chat history
    """
    return st.session_state.chat_history
```


#todo: How to show diff in the code snippet
Update the snippet to call the function get_response with the output of get_chat_history():
```python
# response = get_response(prompt) ## prev
response = get_response(get_chat_history())
```



### Outcome
So after making the changes above, the chatbot is able to remember the conversation that happened earlier. \
#todo: Update the image here.
<img src="{{ site.url }}{{ site.baseurl }}/assets/images/posts/conversational-app-from-groundup/memory-setting-up.png" alt="Response showing lack of conversational memory in current implementation">


## Memory implementation using langchain
Even though the above implementation works, we can optimize it further.



## Downside of this approach

After making the changes, as mentioned, above we are sending the entire conversation over and over again to the LLM (i.e. gpt-3.5-turbo). \
As a result, the LLM is able to remember the conversation that happened earlier, because it is indeed getting the entire information over and over again, through the prompt. 

Though it is working for this small example, it would not be the ideal solution for the real world application. \
Why? 
1. Larger the prompt, higher would be the number of tokens to be sent to the LLM API. Which would result in higher cost to us.
2. Each model has a limit on the number of tokens that it can process in a single API call. So when the conversation gets longer, the model may not be able to process the entire conversation in a single API call. 
3. Too much data, can negatively impact the quality/accuracy of the response. 


 
