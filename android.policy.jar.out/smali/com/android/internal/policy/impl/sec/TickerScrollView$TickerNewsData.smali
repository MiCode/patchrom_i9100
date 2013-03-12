.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerNewsData"
.end annotation


# instance fields
.field private mAttribute:Ljava/lang/String;

.field private mNews_url:Ljava/lang/String;

.field private mPublish_time:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "attribute"
    .parameter "publish_time"
    .parameter "news_url"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 525
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 528
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 532
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 533
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 534
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 535
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 536
    return-void
.end method


# virtual methods
.method public getNewsAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setNewsAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setNewsTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "news_url"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 560
    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 557
    return-void
.end method
