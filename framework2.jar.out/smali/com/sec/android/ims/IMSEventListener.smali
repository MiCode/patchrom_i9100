.class public abstract Lcom/sec/android/ims/IMSEventListener;
.super Ljava/lang/Object;
.source "IMSEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/ims/IMSEventListener$MessageData;
    }
.end annotation


# static fields
.field private static final HANDLE_EVENT:I = 0x0

.field public static final LISTEN_ENABLER_MESSAGE:I = 0x4

.field public static final LISTEN_ENABLER_VOIP:I = 0x2

.field public static final LISTEN_IMS_CORE:I = 0x1

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100


# instance fields
.field public callback:Lcom/sec/android/internal/ims/IIMSEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/sec/android/ims/IMSEventListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/ims/IMSEventListener$1;-><init>(Lcom/sec/android/ims/IMSEventListener;)V

    iput-object v0, p0, Lcom/sec/android/ims/IMSEventListener;->callback:Lcom/sec/android/internal/ims/IIMSEventListener;

    .line 82
    return-void
.end method


# virtual methods
.method public abstract handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
.end method

.method public abstract notifyEvent(IIII[I[Ljava/lang/String;)V
.end method
