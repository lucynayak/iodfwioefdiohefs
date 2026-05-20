.class Lcom/microsoft/cll/android/AbstractHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/cll/android/AbstractHandler;->findExistingFiles(Ljava/lang/String;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/cll/android/AbstractHandler;

.field public final synthetic val$fileExtension:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/cll/android/AbstractHandler;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/microsoft/cll/android/AbstractHandler$1;->this$0:Lcom/microsoft/cll/android/AbstractHandler;

    iput-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler$1;->val$fileExtension:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/microsoft/cll/android/AbstractHandler$1;->val$fileExtension:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
