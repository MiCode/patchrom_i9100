.class Lcom/android/settings/PenSettingsMenu$2;
.super Ljava/lang/Object;
.source "PenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenSettingsMenu;->makeTalkBackDisablePopup()V
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
    .line 344
    iput-object p1, p0, Lcom/android/settings/PenSettingsMenu$2;->this$0:Lcom/android/settings/PenSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$2;->this$0:Lcom/android/settings/PenSettingsMenu;

    #getter for: Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/PenSettingsMenu;->access$000(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$2;->this$0:Lcom/android/settings/PenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    const-string v0, "PenSettingsMenu"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void
.end method
