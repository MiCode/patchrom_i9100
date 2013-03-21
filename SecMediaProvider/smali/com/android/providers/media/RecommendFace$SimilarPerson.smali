.class Lcom/android/providers/media/RecommendFace$SimilarPerson;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RecommendFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimilarPerson"
.end annotation


# instance fields
.field public mPersonId:I

.field public mScore:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput v0, p0, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    .line 202
    iput v0, p0, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mScore:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/RecommendFace$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/providers/media/RecommendFace$SimilarPerson;-><init>()V

    return-void
.end method
