.class Lcom/microsoft/xbox/toolkit/XLEFileCache$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/XLEFileCache;->getOuputStreamForSave(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0

    return-void
.end method
