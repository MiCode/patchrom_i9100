.class Lcom/android/sec_settings/flipfont/FontListPreference$7;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/flipfont/FontListPreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/sec_settings/flipfont/FontListPreference$7;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/sec_settings/flipfont/FontListPreference$7;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/sec_settings/flipfont/FontListPreference;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/sec_settings/flipfont/FontListPreference;->access$702(Lcom/android/sec_settings/flipfont/FontListPreference;Z)Z

    .line 655
    iget-object v0, p0, Lcom/android/sec_settings/flipfont/FontListPreference$7;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/sec_settings/flipfont/FontListPreference;->savePreferences()V

    .line 656
    iget-object v0, p0, Lcom/android/sec_settings/flipfont/FontListPreference$7;->this$0:Lcom/android/sec_settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/sec_settings/flipfont/FontListPreference;->onCancelButtonPressed()V

    .line 657
    return-void
.end method
