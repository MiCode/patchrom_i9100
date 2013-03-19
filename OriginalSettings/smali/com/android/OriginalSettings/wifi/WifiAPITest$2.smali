.class Lcom/android/settings/wifi/WifiAPITest$2;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAPITest;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$2;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$2;->val$input:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 138
    .local v1, value:Landroid/text/Editable;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$2;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/settings/wifi/WifiAPITest;->netid:I
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiAPITest;->access$102(Lcom/android/settings/wifi/WifiAPITest;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$2;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    #getter for: Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiAPITest;->access$200(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest$2;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    #getter for: Lcom/android/settings/wifi/WifiAPITest;->netid:I
    invoke-static {v3}, Lcom/android/settings/wifi/WifiAPITest;->access$100(Lcom/android/settings/wifi/WifiAPITest;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 143
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiAPITest"

    const-string v3, "Numberformat Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
