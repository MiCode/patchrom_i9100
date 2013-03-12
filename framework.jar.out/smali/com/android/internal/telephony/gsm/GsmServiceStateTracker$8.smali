.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showRescanDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 3589
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 3592
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$502(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3593
    return-void
.end method
