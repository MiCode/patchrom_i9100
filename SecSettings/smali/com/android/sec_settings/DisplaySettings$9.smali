.class Lcom/android/sec_settings/DisplaySettings$9;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/DisplaySettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/sec_settings/DisplaySettings$9;->this$0:Lcom/android/sec_settings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/sec_settings/DisplaySettings$9;->this$0:Lcom/android/sec_settings/DisplaySettings;

    #calls: Lcom/android/sec_settings/DisplaySettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/sec_settings/DisplaySettings;->access$600(Lcom/android/sec_settings/DisplaySettings;)V

    .line 1201
    return-void
.end method
