.class Lcom/android/OriginalSettings/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/Settings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/OriginalSettings/Settings$1;->this$0:Lcom/android/OriginalSettings/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings$1;->this$0:Lcom/android/OriginalSettings/Settings;

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings$1;->this$0:Lcom/android/OriginalSettings/Settings;

    #getter for: Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/OriginalSettings/Settings;->access$000(Lcom/android/OriginalSettings/Settings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    #calls: Lcom/android/OriginalSettings/Settings;->switchToParent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/Settings;->access$100(Lcom/android/OriginalSettings/Settings;Ljava/lang/String;)V

    .line 124
    return-void
.end method
