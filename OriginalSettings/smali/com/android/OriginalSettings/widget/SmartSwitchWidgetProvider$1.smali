.class Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;
.super Ljava/lang/Object;
.source "SmartSwitchWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartStayGuideDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    iput-object p2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 481
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 482
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_smart_stay_noti"

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 483
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    iget-object v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;->this$0:Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    #calls: Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V
    invoke-static {v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->access$000(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V

    .line 485
    return-void
.end method
