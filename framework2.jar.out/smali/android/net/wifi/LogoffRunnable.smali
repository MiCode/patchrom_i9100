.class public Landroid/net/wifi/LogoffRunnable;
.super Ljava/lang/Object;
.source "LogoffRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "LogoffRunnable"


# instance fields
.field private handler:Landroid/net/wifi/AggregationHandler;

.field public mContext:Landroid/content/Context;

.field public urlc:Ljava/net/HttpURLConnection;

.field private xmlreader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/net/wifi/LogoffRunnable;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 55
    new-instance v10, Landroid/net/wifi/AggregationHandler;

    invoke-direct {v10}, Landroid/net/wifi/AggregationHandler;-><init>()V

    iput-object v10, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    .line 57
    :try_start_0
    const-string v10, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v10}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v10

    iput-object v10, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    .line 58
    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    const-string v11, "http://xml.org/sax/properties/lexical-handler"

    iget-object v12, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v10, v11, v12}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    iget-object v11, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v10, v11}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 66
    :try_start_1
    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 67
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v10, "no_logoff_url"

    invoke-static {v1, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, logoffurl:Ljava/lang/String;
    const-string v10, "LogoffRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Log off URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz v5, :cond_2

    const-string v10, "no_logoff_url"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 73
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 75
    .local v9, urlConnection:Ljava/net/HttpURLConnection;
    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 77
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 79
    .local v7, responseCode:I
    const-string v10, "LogoffRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "response code of HTTP GET on Logoff URL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/16 v10, 0xc8

    if-ne v7, v10, :cond_3

    .line 81
    const-string v10, "LogoffRunnable"

    const-string v11, " HTTP GET on Logoff URL successful*******************"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 83
    .local v4, is:Ljava/io/InputStream;
    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    new-instance v11, Lorg/xml/sax/InputSource;

    invoke-direct {v11, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v10, v11}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 84
    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-virtual {v10}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v6

    .line 85
    .local v6, msg:Landroid/net/wifi/Message;
    const-string v10, "LogoffRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " msg has Wispr comment"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v6, Landroid/net/wifi/Message;->hasWispr:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-boolean v10, v6, Landroid/net/wifi/Message;->hasWispr:Z

    if-eqz v10, :cond_0

    .line 88
    invoke-virtual {v6}, Landroid/net/wifi/Message;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, comment:Ljava/lang/String;
    const-string v10, "LogoffRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "comment "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/16 v10, 0x3c

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    new-instance v11, Lorg/xml/sax/InputSource;

    new-instance v12, Ljava/io/StringReader;

    invoke-direct {v12, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v10, v11}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 92
    iget-object v10, p0, Landroid/net/wifi/LogoffRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-virtual {v10}, Landroid/net/wifi/AggregationHandler;->getMessage()Landroid/net/wifi/Message;

    move-result-object v6

    .line 95
    .end local v0           #comment:Ljava/lang/String;
    :cond_0
    iget v10, v6, Landroid/net/wifi/Message;->messageType:I

    const/16 v11, 0x82

    if-ne v10, v11, :cond_1

    .line 96
    iget v10, v6, Landroid/net/wifi/Message;->responseCode:I

    sparse-switch v10, :sswitch_data_0

    .line 107
    const-string v10, "LogoffRunnable"

    const-string v11, "Unknown error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v6           #msg:Landroid/net/wifi/Message;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 115
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #logoffurl:Ljava/lang/String;
    .end local v7           #responseCode:I
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_2
    :goto_2
    return-void

    .line 59
    :catch_0
    move-exception v3

    .line 61
    .local v3, e1:Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .line 99
    .end local v3           #e1:Lorg/xml/sax/SAXException;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #logoffurl:Ljava/lang/String;
    .restart local v6       #msg:Landroid/net/wifi/Message;
    .restart local v7       #responseCode:I
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_0
    :try_start_2
    const-string v10, "LogoffRunnable"

    const-string v11, "Logoff Success"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v10, 0x0

    sput-object v10, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 117
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #logoffurl:Ljava/lang/String;
    .end local v6           #msg:Landroid/net/wifi/Message;
    .end local v7           #responseCode:I
    .end local v8           #url:Ljava/net/URL;
    .end local v9           #urlConnection:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "LogoffRunnable"

    const-string v11, "on error in executting Logoff HTTPget"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 104
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #logoffurl:Ljava/lang/String;
    .restart local v6       #msg:Landroid/net/wifi/Message;
    .restart local v7       #responseCode:I
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlConnection:Ljava/net/HttpURLConnection;
    :sswitch_1
    :try_start_3
    const-string v10, "LogoffRunnable"

    const-string v11, "Access gateway internal error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #msg:Landroid/net/wifi/Message;
    :cond_3
    const-string v10, "LogoffRunnable"

    const-string v11, "Error ****************"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method
