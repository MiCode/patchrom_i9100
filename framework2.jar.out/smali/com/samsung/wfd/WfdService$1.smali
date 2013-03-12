.class Lcom/samsung/wfd/WfdService$1;
.super Ljava/lang/Object;
.source "WfdService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wfd/WfdService;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$1;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$1;->this$0:Lcom/samsung/wfd/WfdService;

    invoke-static {p2}, Lcom/samsung/wfd/IWfdSourceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wfd/IWfdSourceService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 128
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/wfd/WfdService$1;->this$0:Lcom/samsung/wfd/WfdService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/wfd/WfdService;->mWfdSourceService:Lcom/samsung/wfd/IWfdSourceService;

    .line 132
    return-void
.end method
