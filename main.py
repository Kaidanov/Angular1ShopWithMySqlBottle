from bottle import hook, route, run, response, request, static_file, template
import json
import pymysql

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='',
                             db='shop',
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)

@route('/get-my-json', method='GET')
def get_json():
    with connection.cursor() as cursor:
        sql = "SELECT * FROM products p inner join description d on p.id= d.products_id"
        cursor.execute(sql)
        result = cursor.fetchall()
    return json.dumps({"products":result})

#if you don't want to add db just use this method instead the one above
#and comment out the db connection
# @route('/get-my-json', method='GET')
# def get_json():
#     return open('data.json').read()


@route('/', method='GET')
def index():
    return template("index.html")


@route('/<directory:re:.*>/<filename:re:.*\.(js|html)>', method='GET')
def javascripts_and_html(filename, directory):
    return static_file(filename, root=directory)


@route('/content/<directory:re:.*>/<filename:re:.*\.(jpg|png|gif|ico|css)>', method='GET')
def images(filename, directory):
    return static_file(filename, root='content/{}'.format(directory))


def main():
    run(host='localhost', port=8000)


if __name__ == '__main__':
    main()
