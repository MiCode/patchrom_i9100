.class public final Lcom/android/server/input/InputApplicationHandle;
.super Ljava/lang/Object;
.source "InputApplicationHandle.java"


# instance fields
.field public final appWindowToken:Ljava/lang/Object;

.field public dispatchingTimeoutNanos:J

.field public name:Ljava/lang/String;

.field private ptr:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "appWindowToken"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/input/InputApplicationHandle;->nativeDispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 53
    return-void

    .line 51
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
