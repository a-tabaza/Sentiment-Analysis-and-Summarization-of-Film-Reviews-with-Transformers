# **Sentiment Analysis and Summarization of Film Reviews with Transformers**
### Concepts & Ideas used:
  1. Web scraping using Selenium 
  2. Compiling dataset from scratch
  3. Data vizualization with text datasets (avanced WordCloud vizualization)
  4. Using Transformers to generate sentiment features such as label and score
  5. Using Transformers to generate a summary of the reviews

### Models Used (HuggingFace):
- [DistilBERT Base Uncased fine-tuned on SST-2](https://huggingface.co/distilbert-base-uncased-finetuned-sst-2-english) for sentiment analysis
- [BART Large fine-tuned on CNN and SAMSum datasets](https://huggingface.co/philschmid/bart-large-cnn-samsum) for summarization

### Word Cloud:
<img src="https://github.com/a-tabaza/sentiment-analysis-and-film-rating-prediction-with-transformers/blob/main/combined_wc_resized.png?raw=true"  width="1200" height="770">
<img src="https://github.com/a-tabaza/sentiment-analysis-and-film-rating-prediction-with-transformers/blob/main/wordcloud_combined.jpg?raw=true"  width="800" height="800">

### Review Summarization:
- Review: You know those revenge stories that are so often used in various Asian cinema, the ones that involve, like, Jackie Chan killing the killers of his brother or whatever  This film is NOTHING like that. However, that's as close of a basic foundational structure I can give you to help explain this amazing psychological look into a world defined by violence and masochism. 
- Review Summary: This film is nothing like the usual revenge stories used in Asian cinema. It's an amazing psychological look into a world defined by violence and masochism. It is not about killing the killers of Jackie Chan's brother, but it's about revenge.  

Sources: 
- [Web Scraping](https://www.analyticsvidhya.com/blog/2022/07/scraping-imdb-reviews-in-python-using-selenium/)
- [Sentiment Analysis](https://www.kaggle.com/code/emirkocak/in-depth-series-sentiment-analysis-w-transformers/)
- [HuggingFace Documentation](https://huggingface.co/blog/sentiment-analysis-python)

