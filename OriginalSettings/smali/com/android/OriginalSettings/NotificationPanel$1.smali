.class Lcom/android/settings/NotificationPanel$1;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/NotificationPanel$1;->this$0:Lcom/android/settings/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 300
    const-string v0, "NotificationPanel"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/settings/NotificationPanel$1;->this$0:Lcom/android/settings/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/settings/NotificationPanel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_panel_brightness_adjustment"

    iget-object v0, p0, Lcom/android/settings/NotificationPanel$1;->this$0:Lcom/android/settings/NotificationPanel;

    #getter for: Lcom/android/settings/NotificationPanel;->mBrightnessChk:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/settings/NotificationPanel;->access$000(Lcom/android/settings/NotificationPanel;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    return-void

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
