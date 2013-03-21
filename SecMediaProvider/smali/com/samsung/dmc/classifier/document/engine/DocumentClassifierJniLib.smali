.class public Lcom/samsung/dmc/classifier/document/engine/DocumentClassifierJniLib;
.super Ljava/lang/Object;
.source "DocumentClassifierJniLib.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "DocumentClassifier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method


# virtual methods
.method public native closeDocumentClassifierEngine()Z
.end method

.method public native imageProcessARGB([III)Z
.end method

.method public native openDocumentClassifierEngine()Z
.end method
