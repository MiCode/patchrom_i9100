.class Landroid/app/SallyService$2;
.super Landroid/content/BroadcastReceiver;
.source "SallyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SallyService;->initAlarmEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SallyService;


# direct methods
.method constructor <init>(Landroid/app/SallyService;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Landroid/app/SallyService$2;->this$0:Landroid/app/SallyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Landroid/app/SallyService$2;->this$0:Landroid/app/SallyService;

    invoke-virtual {v1}, Landroid/app/SallyService;->stopService()V

    .line 187
    :cond_0
    return-void
.end method
