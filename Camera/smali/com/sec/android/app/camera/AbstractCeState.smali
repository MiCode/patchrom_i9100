.class public abstract Lcom/sec/android/app/camera/AbstractCeState;
.super Ljava/lang/Object;
.source "AbstractCeState.java"


# static fields
.field public static final CE_STATE_END_OF_DEF:I = 0x7

.field public static final CE_STATE_IDLE:I = 0x0

.field public static final CE_STATE_INITIALIZED:I = 0x2

.field public static final CE_STATE_INITIALIZING:I = 0x1

.field public static final CE_STATE_PREVIEWING:I = 0x4

.field public static final CE_STATE_RECORDING:I = 0x5

.field public static final CE_STATE_SHUTDOWN:I = 0x7

.field public static final CE_STATE_STARTING_PREVIEW:I = 0x3

.field public static final CE_STATE_WAIT_FOR_SURFACE:I = 0x6

.field protected static final TAG:Ljava/lang/String; = "AbstractCeState"


# instance fields
.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mId:I

.field private mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V
    .locals 0
    .parameter "cameraEngine"
    .parameter "requestQueue"
    .parameter "id"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCeState;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 43
    iput-object p2, p0, Lcom/sec/android/app/camera/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    .line 44
    iput p3, p0, Lcom/sec/android/app/camera/AbstractCeState;->mId:I

    .line 45
    return-void
.end method


# virtual methods
.method public abstract cancelRequest(Lcom/sec/android/app/camera/CeRequest;)V
.end method

.method protected getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCeState;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCeState;->mId:I

    return v0
.end method

.method protected getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCeState;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    return-object v0
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public abstract handleRequest(Lcom/sec/android/app/camera/CeRequest;)Z
.end method
