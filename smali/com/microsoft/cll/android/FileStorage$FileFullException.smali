.class Lcom/microsoft/cll/android/FileStorage$FileFullException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/cll/android/FileStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileFullException"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/cll/android/FileStorage;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/FileStorage;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/cll/android/FileStorage$FileFullException;->this$0:Lcom/microsoft/cll/android/FileStorage;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
