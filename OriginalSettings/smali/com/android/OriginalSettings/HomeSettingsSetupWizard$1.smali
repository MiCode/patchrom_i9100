.class Lcom/android/settings/HomeSettingsSetupWizard$1;
.super Ljava/lang/Object;
.source "HomeSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/HomeSettingsSetupWizard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HomeSettingsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/HomeSettingsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings/HomeSettingsSetupWizard$1;->this$0:Lcom/android/settings/HomeSettingsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard$1;->this$0:Lcom/android/settings/HomeSettingsSetupWizard;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/HomeSettingsSetupWizard;->setResult(I)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/HomeSettingsSetupWizard$1;->this$0:Lcom/android/settings/HomeSettingsSetupWizard;

    invoke-virtual {v0}, Lcom/android/settings/HomeSettingsSetupWizard;->finish()V

    .line 38
    return-void
.end method
