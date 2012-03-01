.class Lcom/android/phone/InCallScreen$5$1;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/InCallScreen$5;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen$5;)V
    .locals 0
    .parameter

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/phone/InCallScreen$5$1;->this$1:Lcom/android/phone/InCallScreen$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 973
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 974
    return-void
.end method
