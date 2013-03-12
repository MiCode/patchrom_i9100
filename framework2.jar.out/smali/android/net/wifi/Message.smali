.class public Landroid/net/wifi/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private abortLogin:Ljava/net/URI;

.field private accessLocation:Ljava/lang/String;

.field private accessProcedure:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private delayType:I

.field public hasWispr:Z

.field private locationName:Ljava/lang/String;

.field private loginResultURL:Ljava/net/URI;

.field private loginURL:Ljava/net/URI;

.field private logoffURL:Ljava/net/URI;

.field public messageType:I

.field private nextURL:Ljava/net/URI;

.field private replyMessage:Ljava/lang/String;

.field public responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Landroid/net/wifi/Message;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginURL()Ljava/net/URI;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/net/wifi/Message;->loginURL:Ljava/net/URI;

    return-object v0
.end method

.method public getLogoffURL()Ljava/net/URI;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Landroid/net/wifi/Message;->logoffURL:Ljava/net/URI;

    return-object v0
.end method

.method public getNextURL()Ljava/net/URI;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroid/net/wifi/Message;->nextURL:Ljava/net/URI;

    return-object v0
.end method

.method public setAccessProcedure(Ljava/lang/String;)V
    .locals 0
    .parameter "accessProcedure"

    .prologue
    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 124
    iput-object p1, p0, Landroid/net/wifi/Message;->accessProcedure:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setAccesslocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 130
    iput-object p1, p0, Landroid/net/wifi/Message;->accessLocation:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 135
    iput-object p1, p0, Landroid/net/wifi/Message;->comment:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setLoginURL(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 49
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/Message;->loginURL:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLogoffURL(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 63
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/Message;->logoffURL:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/Message;->messageType:I

    .line 91
    return-void
.end method

.method public setNextURL(Ljava/lang/String;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/Message;->nextURL:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public setResponseCode(Ljava/lang/String;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/Message;->responseCode:I

    .line 99
    return-void
.end method
