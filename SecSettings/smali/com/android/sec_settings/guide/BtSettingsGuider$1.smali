.class Lcom/android/sec_settings/guide/BtSettingsGuider$1;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Lcom/android/sec_settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/guide/BtSettingsGuider;->showHelpDialog(Lcom/android/sec_settings/guide/BtSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/guide/BtSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/sec_settings/guide/BtSettingsGuider$1;->this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/sec_settings/guide/BtSettingsGuider$1;->this$0:Lcom/android/sec_settings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/android/sec_settings/guide/BtSettingsGuider;->showCompleteDialog()V

    .line 250
    return-void
.end method
