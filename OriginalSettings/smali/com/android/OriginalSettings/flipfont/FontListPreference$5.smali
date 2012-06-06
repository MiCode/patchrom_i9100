.class Lcom/android/OriginalSettings/flipfont/FontListPreference$5;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/flipfont/FontListPreference;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$202(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z

    .line 429
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 430
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 431
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$5;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->onCancelButtonPressed()V

    .line 432
    return-void
.end method
