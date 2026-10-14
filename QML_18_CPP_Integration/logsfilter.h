#ifndef LOGSFILTER_H
#define LOGSFILTER_H

#include <QObject>
#include <QString>
#include <QUrl>
#include <QFileInfo>

class LogsFilter : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString filePath     READ filePath WRITE setFilePath
                                                        NOTIFY filePathChanged)
    Q_PROPERTY(QString filteredLogs READ filteredLogs   NOTIFY filteredLogsChanged)
    Q_PROPERTY(QString fileName     READ getFileName    NOTIFY filChanged)
public:
    explicit LogsFilter(QObject *parent = nullptr);

    Q_INVOKABLE void searchLogs(const QString& type);
    const QString getFileName() const;

    QString filteredLogs() const { return m_filteredLogs; }
    QString filePath() const { return m_filePath; }

    void setFilePath(const QString& filePath);
signals:
    void filePathChanged();
    void fileNameChanged();
    void filteredLogsChanged();
    void filChanged();
private:
    QString m_filteredLogs;
    QString m_filePath;

};

#endif // LOGSFILTER_H
