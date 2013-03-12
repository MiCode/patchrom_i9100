.class public Landroid/net/wifi/AggregationRunnable;
.super Ljava/lang/Object;
.source "AggregationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/AggregationRunnable$TestHttpGet;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private handler:Landroid/net/wifi/AggregationHandler;

.field public mContext:Landroid/content/Context;

.field public mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public urlc:Ljava/net/HttpURLConnection;

.field private xmlreader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "AggregationRunnable"

    iput-object v0, p0, Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/AggregationRunnable;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/AggregationRunnable;)Lorg/xml/sax/XMLReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/AggregationRunnable;)Landroid/net/wifi/AggregationHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 68
    iget-object v3, p0, Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;

    const-string v4, "run() method"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v3, Landroid/net/wifi/AggregationHandler;

    invoke-direct {v3}, Landroid/net/wifi/AggregationHandler;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    .line 72
    :try_start_0
    const-string v3, "org.ccil.cowan.tagsoup.Parser"

    invoke-static {v3}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    .line 73
    iget-object v3, p0, Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    const-string v4, "http://xml.org/sax/properties/lexical-handler"

    iget-object v5, p0, Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v3, v4, v5}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/AggregationRunnable;->xmlreader:Lorg/xml/sax/XMLReader;

    iget-object v4, p0, Landroid/net/wifi/AggregationRunnable;->handler:Landroid/net/wifi/AggregationHandler;

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 81
    new-instance v2, Landroid/net/wifi/AggregationRunnable$TestHttpGet;

    invoke-direct {v2, p0}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;-><init>(Landroid/net/wifi/AggregationRunnable;)V

    .line 83
    .local v2, test:Landroid/net/wifi/AggregationRunnable$TestHttpGet;
    :try_start_1
    invoke-virtual {v2}, Landroid/net/wifi/AggregationRunnable$TestHttpGet;->executeHttpGet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :goto_1
    return-void

    .line 74
    .end local v2           #test:Landroid/net/wifi/AggregationRunnable$TestHttpGet;
    :catch_0
    move-exception v1

    .line 76
    .local v1, e1:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1           #e1:Lorg/xml/sax/SAXException;
    .restart local v2       #test:Landroid/net/wifi/AggregationRunnable$TestHttpGet;
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/net/wifi/AggregationRunnable;->TAG:Ljava/lang/String;

    const-string v4, "error in executting executeHTTPget"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v3, p0, Landroid/net/wifi/AggregationRunnable;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "ACTION_AGGREGATION_DISCONNECT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
