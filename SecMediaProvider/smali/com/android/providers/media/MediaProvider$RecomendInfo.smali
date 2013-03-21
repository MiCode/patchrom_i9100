.class public Lcom/android/providers/media/MediaProvider$RecomendInfo;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecomendInfo"
.end annotation


# instance fields
.field public mFaceId:I

.field public mPersonId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "faceId"
    .parameter "personId"

    .prologue
    const/4 v0, 0x0

    .line 7228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7232
    iput v0, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    .line 7233
    iput v0, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mPersonId:I

    .line 7229
    iput p1, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    .line 7230
    iput p2, p0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mPersonId:I

    .line 7231
    return-void
.end method
