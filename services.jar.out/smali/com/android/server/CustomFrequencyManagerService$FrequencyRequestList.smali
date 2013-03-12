.class Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/CustomFrequencyManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/CustomFrequencyManagerService;Lcom/android/server/CustomFrequencyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;)V
    .locals 4
    .parameter "req"

    .prologue
    .line 1028
    iget-object v1, p1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1029
    .local v0, index:I
    if-gez v0, :cond_1

    .line 1030
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "FrequencyrequestList.addReqest:: insert new request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_1
    return-void
.end method

.method getIndex(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 5
    .parameter "binder"
    .parameter "reqType"
    .parameter "pkgName"

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v1

    .line 1051
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1052
    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    if-ne v2, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1054
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrequencyrequestList.getIndex:: i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 1051
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method getNextMaxCPUCoreRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1133
    .local v5, size:I
    const/4 v2, -0x1

    .line 1134
    .local v2, indexMaxCPUCoreRequest:I
    const/4 v4, -0x1

    .line 1138
    .local v4, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1139
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 1140
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1142
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1143
    move v4, v0

    .line 1144
    move v2, v1

    .line 1138
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v4, :cond_0

    .line 1147
    move v4, v0

    .line 1148
    move v2, v1

    goto :goto_1

    .line 1154
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_3

    .line 1155
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxCPUCoreRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p0, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 1161
    .local v3, maxCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v3

    .line 1158
    .end local v3           #maxCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v3, 0x0

    .restart local v3       #maxCPUCoreRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxGPURequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1064
    .local v5, size:I
    const/4 v2, -0x1

    .line 1065
    .local v2, indexMaxGPURequest:I
    const/4 v3, -0x1

    .line 1069
    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1070
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1071
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1073
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1074
    move v3, v0

    .line 1075
    move v2, v1

    .line 1069
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v3, :cond_0

    .line 1078
    move v3, v0

    .line 1079
    move v2, v1

    goto :goto_1

    .line 1085
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_4

    .line 1086
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1087
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxGPURequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 1094
    .local v4, maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1091
    .end local v4           #maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #maxGPURequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxSysBusRequest()Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->size()I

    move-result v5

    .line 1099
    .local v5, size:I
    const/4 v2, -0x1

    .line 1100
    .local v2, indexMaxSysBusRequest:I
    const/4 v3, -0x1

    .line 1104
    .local v3, maxFrequency:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1105
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1106
    invoke-virtual {p0, v1}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1108
    .local v0, frequency:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1109
    move v3, v0

    .line 1110
    move v2, v1

    .line 1104
    .end local v0           #frequency:I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    .restart local v0       #frequency:I
    :cond_1
    if-le v0, v3, :cond_0

    .line 1113
    move v3, v0

    .line 1114
    move v2, v1

    goto :goto_1

    .line 1120
    .end local v0           #frequency:I
    :cond_2
    if-ltz v2, :cond_4

    .line 1121
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1122
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 1128
    .local v4, maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1126
    .end local v4           #maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #maxSysBusRequest:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
    .locals 4
    .parameter "binder"
    .parameter "type"
    .parameter "pkgName"

    .prologue
    .line 1038
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1039
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1040
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrequencyrequestList.removeRequest:: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;

    .line 1045
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
