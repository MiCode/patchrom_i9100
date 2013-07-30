.class Lcom/android/sec_settings/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/sec_settings/Settings$1;->this$0:Lcom/android/sec_settings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/sec_settings/Settings$1;->this$0:Lcom/android/sec_settings/Settings;

    iget-object v1, p0, Lcom/android/sec_settings/Settings$1;->this$0:Lcom/android/sec_settings/Settings;

    #getter for: Lcom/android/sec_settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/sec_settings/Settings;->access$000(Lcom/android/sec_settings/Settings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/sec_settings/Settings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/sec_settings/Settings;->access$100(Lcom/android/sec_settings/Settings;Ljava/lang/String;)V

    .line 223
    return-void
.end method
