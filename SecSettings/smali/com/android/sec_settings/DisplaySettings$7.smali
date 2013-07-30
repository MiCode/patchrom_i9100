.class Lcom/android/sec_settings/DisplaySettings$7;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DisplaySettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/sec_settings/DisplaySettings$7;->this$0:Lcom/android/sec_settings/DisplaySettings;

    iput-object p2, p0, Lcom/android/sec_settings/DisplaySettings$7;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/sec_settings/DisplaySettings$7;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings$7;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_font_noti"

    iget-object v2, p0, Lcom/android/sec_settings/DisplaySettings$7;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1148
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings$7;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1149
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1150
    return-void
.end method
