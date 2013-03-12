.class public Landroid/webkit/WebFeedLink;
.super Ljava/lang/Object;
.source "WebFeedLink.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "title"
    .parameter "type"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/webkit/WebFeedLink;->mUrl:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Landroid/webkit/WebFeedLink;->mTitle:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Landroid/webkit/WebFeedLink;->mType:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mUrl:Ljava/lang/String;

    return-object v0
.end method
