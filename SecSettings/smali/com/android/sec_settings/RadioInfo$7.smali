.class Lcom/android/sec_settings/RadioInfo$7;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sec_settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/sec_settings/RadioInfo$7;->this$0:Lcom/android/sec_settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 806
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SimContacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    iget-object v1, p0, Lcom/android/sec_settings/RadioInfo$7;->this$0:Lcom/android/sec_settings/RadioInfo;

    invoke-virtual {v1, v0}, Lcom/android/sec_settings/RadioInfo;->startActivity(Landroid/content/Intent;)V

    .line 815
    const/4 v1, 0x1

    return v1
.end method
