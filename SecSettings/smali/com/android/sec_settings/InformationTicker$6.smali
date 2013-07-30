.class Lcom/android/sec_settings/InformationTicker$6;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/InformationTicker;->showNotiOfChargesDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/InformationTicker;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/InformationTicker;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/sec_settings/InformationTicker$6;->this$0:Lcom/android/sec_settings/InformationTicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/sec_settings/InformationTicker$6;->this$0:Lcom/android/sec_settings/InformationTicker;

    #calls: Lcom/android/sec_settings/InformationTicker;->updateFacebookState()V
    invoke-static {v0}, Lcom/android/sec_settings/InformationTicker;->access$400(Lcom/android/sec_settings/InformationTicker;)V

    .line 719
    return-void
.end method
