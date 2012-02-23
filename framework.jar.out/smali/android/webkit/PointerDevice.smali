.class public final Landroid/webkit/PointerDevice;
.super Ljava/lang/Object;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/PointerDevice$FPSWatcher;,
        Landroid/webkit/PointerDevice$MotionFilter;,
        Landroid/webkit/PointerDevice$TouchOptimizer;,
        Landroid/webkit/PointerDevice$PointerState;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final ENABLE_POINTERDEVICE_READ_FROM_ASHMEM:Z = false

.field private static final INVALID_ID:I = -0x270f

.field public static final MAX_POINTERS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "PointerDevice"


# instance fields
.field private mCoordOrigin:[I

.field private mOwnerView:Landroid/view/View;

.field private mTmpCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTmpPressed:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "1"

    const-string v1, "debug.pointerdevice"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/webkit/PointerDevice;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/16 v2, 0x10

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/webkit/PointerDevice;->mCoordOrigin:[I

    .line 46
    iput-object p1, p0, Landroid/webkit/PointerDevice;->mOwnerView:Landroid/view/View;

    .line 47
    new-array v1, v2, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Landroid/webkit/PointerDevice;->mTmpCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 48
    new-array v1, v2, [Z

    iput-object v1, p0, Landroid/webkit/PointerDevice;->mTmpPressed:[Z

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/webkit/PointerDevice;->mTmpCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Landroid/webkit/PointerDevice;->mTmpCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static newPointerStates()[Landroid/webkit/PointerDevice$PointerState;
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 130
    new-array v1, v3, [Landroid/webkit/PointerDevice$PointerState;

    .line 131
    .local v1, m:[Landroid/webkit/PointerDevice$PointerState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 132
    new-instance v2, Landroid/webkit/PointerDevice$PointerState;

    invoke-direct {v2}, Landroid/webkit/PointerDevice$PointerState;-><init>()V

    aput-object v2, v1, v0

    .line 133
    aget-object v2, v1, v0

    iput v0, v2, Landroid/webkit/PointerDevice$PointerState;->id:I

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized update([Landroid/webkit/PointerDevice$PointerState;)Z
    .locals 1
    .parameter "copy"

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method
