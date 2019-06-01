# encoding: UTF-8

require 'logger'

#ログ出力
log = Logger.new('./output/log.txt')

log.debug('debug_') #デバッグ
log.info('info_') #インフォメーション
log.warn('warn_') #注意
log.error('error') #エラー
log.fatal('fatal') #致命的
log.unknown('unknown') #謎
log.level=Logger::INFO #ログレベルの設定
log.level=Logger::FATAL
