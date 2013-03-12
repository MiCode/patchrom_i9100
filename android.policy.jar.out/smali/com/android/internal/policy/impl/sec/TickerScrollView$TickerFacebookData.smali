.class public Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerFacebookData"
.end annotation


# instance fields
.field private mAttribute:Ljava/lang/String;

.field private mFacebook_postid:Ljava/lang/String;

.field private mPublish_time:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 487
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 488
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/sec/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "attribute"
    .parameter "publish_time"
    .parameter "facebook_postid"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->this$0:Lcom/android/internal/policy/impl/sec/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 487
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 488
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 489
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 493
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 494
    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 495
    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 496
    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 497
    return-void
.end method


# virtual methods
.method public getFacebookAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookPostID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setFacebookAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setFacebookPostID(Ljava/lang/String;)V
    .locals 0
    .parameter "facebook_postid"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setFacebookTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 518
    return-void
.end method
