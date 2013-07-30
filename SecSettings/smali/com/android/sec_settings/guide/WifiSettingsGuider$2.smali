.class Lcom/android/sec_settings/guide/WifiSettingsGuider$2;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Lcom/android/sec_settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/sec_settings/guide/WifiSettingsGuider$GuideStates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/guide/WifiSettingsGuider;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/sec_settings/guide/WifiSettingsGuider$2;->this$0:Lcom/android/sec_settings/guide/WifiSettingsGuider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/sec_settings/guide/WifiSettingsGuider$2;->this$0:Lcom/android/sec_settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/android/sec_settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 220
    return-void
.end method
