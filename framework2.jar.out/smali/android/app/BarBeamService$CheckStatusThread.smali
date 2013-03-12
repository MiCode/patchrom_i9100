.class final Landroid/app/BarBeamService$CheckStatusThread;
.super Ljava/lang/Thread;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BarBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckStatusThread"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/app/BarBeamService;


# direct methods
.method public constructor <init>(Landroid/app/BarBeamService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/app/BarBeamService$CheckStatusThread;->this$0:Landroid/app/BarBeamService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 144
    iput-object p2, p0, Landroid/app/BarBeamService$CheckStatusThread;->mMainHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 149
    new-instance v0, Landroid/app/BarBeamService$CheckStatusThread$1;

    invoke-direct {v0, p0}, Landroid/app/BarBeamService$CheckStatusThread$1;-><init>(Landroid/app/BarBeamService$CheckStatusThread;)V

    iput-object v0, p0, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    .line 174
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 175
    return-void
.end method
