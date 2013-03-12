.class Landroid/app/SallyService$1;
.super Landroid/telephony/PhoneStateListener;
.source "SallyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SallyService;->initTelephonyEventListener()V
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
    .line 161
    iput-object p1, p0, Landroid/app/SallyService$1;->this$0:Landroid/app/SallyService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 163
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/app/SallyService$1;->this$0:Landroid/app/SallyService;

    invoke-virtual {v0}, Landroid/app/SallyService;->stopService()V

    .line 166
    :cond_0
    return-void
.end method
