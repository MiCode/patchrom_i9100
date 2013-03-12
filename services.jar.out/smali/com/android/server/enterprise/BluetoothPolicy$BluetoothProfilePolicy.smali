.class Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;
.super Lcom/android/server/enterprise/BlackWhiteListPolicy;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BluetoothProfilePolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/BluetoothPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "table"

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    .line 1130
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/BlackWhiteListPolicy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1131
    return-void
.end method


# virtual methods
.method public isPolicyActive(I)Z
    .locals 4
    .parameter "adminUid"

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/BluetoothPolicy$BluetoothProfilePolicy;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    #getter for: Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;
    invoke-static {v1}, Lcom/android/server/enterprise/BluetoothPolicy;->access$200(Lcom/android/server/enterprise/BluetoothPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;

    move-result-object v1

    const-string v2, "BLUETOOTH"

    const-string v3, "profilePolicyEnabled"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1139
    :goto_0
    return v1

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v1, 0x0

    goto :goto_0
.end method
