.class Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;
.super Ljava/lang/Object;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;

    invoke-virtual {v0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->access$002(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;Z)Z

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->mPowerkeyPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->access$100(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall$2;->this$0:Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->endPowerKeyEndChecked:Z
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;->access$000(Lcom/sec/android/app/callsetting/allcalls/AnsweringCall;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 241
    return-void
.end method
