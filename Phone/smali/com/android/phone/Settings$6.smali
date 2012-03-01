.class Lcom/android/phone/Settings$6;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;

.field final synthetic val$buttonDataRoamingMode:I


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/phone/Settings$6;->this$0:Lcom/android/phone/Settings;

    iput p2, p0, Lcom/android/phone/Settings$6;->val$buttonDataRoamingMode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 694
    const-string v0, "NetworkSettings"

    const-string v1, "mRoamingWarningDialog : OK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/android/phone/Settings$6;->this$0:Lcom/android/phone/Settings;

    iget v1, p0, Lcom/android/phone/Settings$6;->val$buttonDataRoamingMode:I

    #calls: Lcom/android/phone/Settings;->setSelectedDataRoamingMode(I)V
    invoke-static {v0, v1}, Lcom/android/phone/Settings;->access$600(Lcom/android/phone/Settings;I)V

    .line 696
    return-void
.end method
