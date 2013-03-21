.class Lcom/android/providers/media/RecommendFace$FaceItem;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RecommendFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceItem"
.end annotation


# instance fields
.field public mFaceData:I

.field public mFaceId:I

.field final synthetic this$0:Lcom/android/providers/media/RecommendFace;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/RecommendFace;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->this$0:Lcom/android/providers/media/RecommendFace;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    .line 27
    iput v0, p0, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/RecommendFace;Lcom/android/providers/media/RecommendFace$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>(Lcom/android/providers/media/RecommendFace;)V

    return-void
.end method
