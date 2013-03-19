.class Lcom/android/settings/InformationTicker$1;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InformationTicker;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InformationTicker;


# direct methods
.method constructor <init>(Lcom/android/settings/InformationTicker;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/settings/InformationTicker$1;->this$0:Lcom/android/settings/InformationTicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 337
    const-string v2, "market://details?id=com.facebook.katana"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 338
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/InformationTicker$1;->this$0:Lcom/android/settings/InformationTicker;

    invoke-virtual {v2, v0}, Lcom/android/settings/InformationTicker;->startActivity(Landroid/content/Intent;)V

    .line 340
    return-void
.end method
