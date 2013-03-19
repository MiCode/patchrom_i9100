.class Lcom/android/settings/PenSettingsMenu$1;
.super Landroid/os/Handler;
.source "PenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/PenSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settings/PenSettingsMenu$1;->this$0:Lcom/android/settings/PenSettingsMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$1;->this$0:Lcom/android/settings/PenSettingsMenu;

    #getter for: Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/PenSettingsMenu;->access$000(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 327
    return-void
.end method
