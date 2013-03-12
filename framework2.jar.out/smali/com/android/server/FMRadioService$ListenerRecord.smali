.class Lcom/android/server/FMRadioService$ListenerRecord;
.super Ljava/lang/Object;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;


# direct methods
.method public constructor <init>(Lcom/samsung/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V
    .locals 0
    .parameter "listener"
    .parameter "binder"

    .prologue
    .line 951
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p2, p0, Lcom/android/server/FMRadioService$ListenerRecord;->mBinder:Landroid/os/IBinder;

    .line 953
    iput-object p1, p0, Lcom/android/server/FMRadioService$ListenerRecord;->mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .line 954
    return-void
.end method
