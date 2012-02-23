.class Lcom/samsung/CustomerCrashReport$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomerCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/CustomerCrashReport;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/CustomerCrashReport;


# direct methods
.method constructor <init>(Lcom/samsung/CustomerCrashReport;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/CustomerCrashReport$1;->this$0:Lcom/samsung/CustomerCrashReport;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const v2, -0x789abcdf

    .line 124
    const-string v1, "auto_send"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 125
    .local v0, auto_send:I
    const v1, 0x12345678

    if-ne v1, v0, :cond_0

    .line 127
    invoke-static {v3}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    .line 139
    :goto_0
    return-void

    .line 129
    :cond_0
    if-ne v2, v0, :cond_1

    .line 131
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {v3}, Lcom/samsung/CustomerCrashReport;->access$002(Z)Z

    goto :goto_0
.end method
