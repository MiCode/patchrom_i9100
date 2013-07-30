.class Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;
.super Ljava/lang/Object;
.source "SmartNetworkWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;->showGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;

    iput-object p2, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->val$checkBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;

    invoke-virtual {v0}, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;->toggleValue()V

    .line 172
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;

    iget-object v1, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;->disableGuideDialog(Landroid/content/Context;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;

    iget-object v1, p0, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider$1;->val$context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/sec_settings/widget/SmartNetworkWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 176
    return-void
.end method
