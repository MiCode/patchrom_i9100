.class Lcom/android/sec_settings/InformationTicker$2;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/InformationTicker;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 519
    iput-object p1, p0, Lcom/android/sec_settings/InformationTicker$2;->this$0:Lcom/android/sec_settings/InformationTicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 522
    const-string v2, "market://details?id=com.facebook.katana"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 524
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 525
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/sec_settings/InformationTicker$2;->this$0:Lcom/android/sec_settings/InformationTicker;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Lcom/android/sec_settings/InformationTicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 526
    return-void
.end method
