.class Lcom/android/providers/media/MediaProvider$8;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->recomendPesonRequest(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 7260
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$8;->val$uri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 7263
    const/4 v1, 0x0

    .line 7264
    .local v1, itemInfo:Lcom/android/providers/media/MediaProvider$RecomendInfo;
    sget v3, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v3, v6, v6}, Lcom/android/providers/media/NativeApi;->createFR(IZI)I

    move-result v0

    .line 7265
    .local v0, fr:I
    if-eqz v0, :cond_1

    .line 7266
    new-instance v2, Lcom/android/providers/media/RecommendFace;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/providers/media/RecommendFace;-><init>(Landroid/content/Context;I)V

    .line 7267
    .local v2, recommendFace:Lcom/android/providers/media/RecommendFace;
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 7268
    :goto_0
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2600(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 7269
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2600(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #itemInfo:Lcom/android/providers/media/MediaProvider$RecomendInfo;
    check-cast v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;

    .line 7270
    .restart local v1       #itemInfo:Lcom/android/providers/media/MediaProvider$RecomendInfo;
    iget v3, v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    iget v4, v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mPersonId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/media/RecommendFace;->recomendFaces(II)V

    .line 7271
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->access$2600(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7272
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$8;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$8;->val$uri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 7274
    :cond_0
    invoke-static {v0}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 7276
    .end local v2           #recommendFace:Lcom/android/providers/media/RecommendFace;
    :cond_1
    return-void
.end method
