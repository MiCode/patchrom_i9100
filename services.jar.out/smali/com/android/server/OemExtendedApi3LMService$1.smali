.class Lcom/android/server/OemExtendedApi3LMService$1;
.super Ljava/lang/Object;
.source "OemExtendedApi3LMService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExtendedApi3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExtendedApi3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExtendedApi3LMService;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService$1;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 67
    const-string v0, "OemExtendedApi3LM"

    const-string v1, "onServiceConnected is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService$1;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    invoke-static {p2}, Lcom/samsung/felicaremotelock/IFelica$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/felicaremotelock/IFelica;

    move-result-object v1

    #setter for: Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;
    invoke-static {v0, v1}, Lcom/android/server/OemExtendedApi3LMService;->access$002(Lcom/android/server/OemExtendedApi3LMService;Lcom/samsung/felicaremotelock/IFelica;)Lcom/samsung/felicaremotelock/IFelica;

    .line 69
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 72
    const-string v0, "OemExtendedApi3LM"

    const-string v1, "onServiceDisconnected is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService$1;->this$0:Lcom/android/server/OemExtendedApi3LMService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;
    invoke-static {v0, v1}, Lcom/android/server/OemExtendedApi3LMService;->access$002(Lcom/android/server/OemExtendedApi3LMService;Lcom/samsung/felicaremotelock/IFelica;)Lcom/samsung/felicaremotelock/IFelica;

    .line 74
    return-void
.end method
