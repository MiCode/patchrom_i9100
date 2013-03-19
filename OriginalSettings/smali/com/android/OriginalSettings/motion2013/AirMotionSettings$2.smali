.class Lcom/android/settings/motion2013/AirMotionSettings$2;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$2;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$2;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->stopAnimation()V
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$100(Lcom/android/settings/motion2013/AirMotionSettings;)V

    .line 225
    return-void
.end method
