.class Lcom/google/common/collect/MapMaker$QueueHolder;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueHolder"
.end annotation


# static fields
.field static final queue:Lcom/google/common/base/FinalizableReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 837
    new-instance v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/google/common/base/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker$QueueHolder;->queue:Lcom/google/common/base/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 836
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
