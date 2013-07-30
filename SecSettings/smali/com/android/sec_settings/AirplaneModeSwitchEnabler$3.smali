.class Lcom/android/sec_settings/AirplaneModeSwitchEnabler$3;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/AirplaneModeSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/AirplaneModeSwitchEnabler;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/sec_settings/AirplaneModeSwitchEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/sec_settings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/sec_settings/AirplaneModeSwitchEnabler;

    iput-boolean p2, p0, Lcom/android/sec_settings/AirplaneModeSwitchEnabler$3;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/sec_settings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/sec_settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/sec_settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/sec_settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/sec_settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/sec_settings/AirplaneModeSwitchEnabler$3;->val$value:Z

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/sec_settings/AirplaneModeSwitchEnabler$3;->this$0:Lcom/android/sec_settings/AirplaneModeSwitchEnabler;

    iget-boolean v1, p0, Lcom/android/sec_settings/AirplaneModeSwitchEnabler$3;->val$value:Z

    #calls: Lcom/android/sec_settings/AirplaneModeSwitchEnabler;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/AirplaneModeSwitchEnabler;->access$200(Lcom/android/sec_settings/AirplaneModeSwitchEnabler;Z)V

    .line 182
    :cond_0
    return-void
.end method
