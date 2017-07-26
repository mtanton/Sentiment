--create database BrexitBonds
--main tweet table
drop table [dbo].[TweetBank]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TweetBank](
[created_at]									varchar(500) NULL
,[id]											varchar(500) NULL
,[text]											varchar(500) NULL
,[user_id]										varchar(500) NULL
,[user_name]										varchar(500) NULL
,[user_screen_name]								varchar(500) NULL
,[user_description]								varchar(500) NULL
,[followers_count]								varchar(500) NULL
,[friends_count]									varchar(500) NULL
,[listed_count]									varchar(500) NULL
,[favourites_count]								varchar(500) NULL
,[statuses_count]								varchar(500) NULL
,[geo]											varchar(500) NULL
,[coordinates]									varchar(500) NULL
,[place]											varchar(500) NULL
,[contributors]									varchar(500) NULL
,[retweeted_status_created_at]					varchar(500) NULL
,[retweeted_status_id]							varchar(500) NULL
,[retweeted_status_text]							varchar(500) NULL
,[retweeted_status_in_reply_to_status_id]		varchar(500) NULL
,[in_reply_to_user_id]							varchar(500) NULL
,[retweeted_status_user_id]						varchar(500) NULL
,[retweeted_status_user_name]					varchar(500) NULL
,[retweeted_status_user_screen_name]				varchar(500) NULL
,[retweeted_status_user_location]				varchar(500) NULL
,[retweeted_status_user_description]				varchar(500) NULL
,[retweeted_status_user_followers_count]			varchar(500) NULL
,[retweeted_status_user_friends_count]			varchar(500) NULL
,[retweeted_status_user_listed_count]			varchar(500) NULL
,[retweeted_status_user_favourites_count]		varchar(500) NULL
,[retweeted_status_count]								varchar(500) NULL
,[retweeted_status_user_lang]					varchar(500) NULL
,[retweeted_status_geo]							varchar(500) NULL
,[retweeted_status_coordinates]					varchar(500) NULL
,[retweeted_status_place]						varchar(500) NULL
,[retweeted_status_retweet_count]				varchar(500) NULL
,[retweeted_status_favourite_count]				varchar(500) NULL
,[retweeted_status_entities_hashtags]			varchar(500) NULL
,[retweeted_status_entities_urls]				varchar(500) NULL
,[retweeted_status_entities_user_mentions]		varchar(500) NULL
,[retweeted_status_entities_symbols]				varchar(500) NULL
,[entities_hashtags]								varchar(500) NULL
,[entities_urls]									varchar(500) NULL
,[entities_user_mentions_screen_name]			varchar(500) NULL
,[entities_user_mentions_name]					varchar(500) NULL
,[entities_user_mentions_id]						varchar(500) NULL
,[lang]											varchar(500) NULL
,[timestamp_ms]									varchar(500) NULL
,[v_compound]								varchar(50) NULL
,[v_negative]								varchar(50) NULL
,[v_neutral]								varchar(50) NULL
,[v_positive]								varchar(50) NULL
) 

GO

SET ANSI_PADDING OFF
GO



----temp tweet table (see below)
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[TweetBankTemp](
--   [tweet_id] [BIGINT] NOT NULL,
--   [tweet_datetime] [datetime] NULL,
--   [tweet_keyword] [VARCHAR](50) NULL,
--   [tweet] [VARCHAR](200) NULL,
--   [tweeter] [VARCHAR](MAX) NULL,
--   [lang] [VARCHAR](50) NULL
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF
--GO



----a tweet run logging table (for fun)
--SET ANSI_NULLS ON
--GO

--SET QUOTED_IDENTIFIER ON
--GO

--SET ANSI_PADDING ON
--GO

--CREATE TABLE [dbo].[TweetLog](
--   [RunId] [INT] IDENTITY(1,1) NOT NULL,
--   [BatchId] [INT] NULL,
--   [RunDate] [datetime] NULL,
--   [Keyword] [VARCHAR](50) NULL,
--   [HarvestedThisRun] [INT] NULL,
--   [TotalHarvested] [INT] NULL,
--CONSTRAINT [PK_TweetLog] PRIMARY KEY CLUSTERED 
--(
--   [RunId] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
--      IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
--      ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO

--SET ANSI_PADDING OFF