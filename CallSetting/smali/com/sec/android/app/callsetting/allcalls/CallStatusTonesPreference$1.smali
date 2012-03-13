.class Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$1;
.super Ljava/lang/Object;
.source "CallStatusTonesPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$1;->this$0:Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->access$000(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 94
    return-void
.end method
